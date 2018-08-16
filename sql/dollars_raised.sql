select
  sum(gift_amt) as total_dollars,
  count(distinct proposal_id) as gifts
from(
select
  distinct proposal.proposal_id as proposal_id,
  proposal.granted_amt as gift_amt
from cdw.f_proposal_mv proposal
left join cdw.f_assignment_mv assignment
on proposal.proposal_id = assignment.proposal_id
where
  assignment.office_code = '##unit##'
  and proposal.stop_dt between to_date(##from##, 'yyyymmdd') and to_date(##to##, 'yyyymmdd')
  and proposal.proposal_type = 'ORT'
)

