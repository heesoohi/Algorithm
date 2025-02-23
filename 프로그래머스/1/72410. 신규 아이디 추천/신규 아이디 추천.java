class Solution {
    public String solution(String new_id) {
        
        String recommendation = new KAKAOID(new_id)
            .replaceToLowerCase()
            .filter()
            .toSingleDot()
            .noStartEndDot()
            .noBlank()
            .noGreaterThan16()
            .noLessThan2()
            .getResult();
        
        return recommendation;
    }
    
    private static class KAKAOID {
        private String recommendation;
        
        KAKAOID(String recommendation) {
            this.recommendation = recommendation;
        }
        
        private KAKAOID replaceToLowerCase() {
            recommendation = recommendation.toLowerCase();
            return this;
        }
        
        private KAKAOID filter() {
            recommendation = recommendation.replaceAll("[^a-z0-9._-]", "");
            return this;
        }
        
        private KAKAOID toSingleDot() {
            recommendation = recommendation.replaceAll("[.]{2,}", ".");
            return this;
        }
        
        private KAKAOID noStartEndDot() {
            recommendation = recommendation.replaceAll("^[.]|[.]$", "");
            return this;
        }
        
        private KAKAOID noBlank() {
            recommendation = recommendation.isEmpty() ? "a":recommendation;
            return this;
        }
        
        private KAKAOID noGreaterThan16() {
            if (recommendation.length() >= 16){
                recommendation = recommendation.substring(0,15);
            }
            recommendation = recommendation.replaceAll("[.]$","");
            return this;
        }
        
        private KAKAOID noLessThan2() {
            StringBuilder builder = new StringBuilder(recommendation);
            while(builder.length() <= 2) {
                builder.append(builder.charAt(builder.length() - 1));
            }
            recommendation = builder.toString();
            return this;
        }
        
        private String getResult() {
            return recommendation;
        }
    }
}
